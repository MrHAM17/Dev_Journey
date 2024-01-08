package com.tikpikshortvideosocialnetworking.app.modules.risingstars.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowRisingstarsBinding
import com.tikpikshortvideosocialnetworking.app.modules.risingstars.`data`.model.RisingstarsRowModel
import kotlin.Int
import kotlin.collections.List

class RisingstarsAdapter(
  var list: List<RisingstarsRowModel>
) : RecyclerView.Adapter<RisingstarsAdapter.RowRisingstarsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowRisingstarsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_risingstars,parent,false)
    return RowRisingstarsVH(view)
  }

  override fun onBindViewHolder(holder: RowRisingstarsVH, position: Int) {
    val risingstarsRowModel = RisingstarsRowModel()
    // TODO uncomment following line after integration with data source
    // val risingstarsRowModel = list[position]
    holder.binding.risingstarsRowModel = risingstarsRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<RisingstarsRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: RisingstarsRowModel
    ) {
    }
  }

  inner class RowRisingstarsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowRisingstarsBinding = RowRisingstarsBinding.bind(itemView)
    init {
      binding.btnFollow.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, RisingstarsRowModel())
      }
    }
  }
}
