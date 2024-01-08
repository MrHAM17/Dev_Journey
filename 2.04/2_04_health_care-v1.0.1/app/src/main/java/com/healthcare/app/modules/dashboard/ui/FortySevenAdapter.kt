package com.healthcare.app.modules.dashboard.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.healthcare.app.R
import com.healthcare.app.databinding.RowFortysevenBinding
import com.healthcare.app.modules.dashboard.`data`.model.FortysevenRowModel
import kotlin.Int
import kotlin.collections.List

class FortySevenAdapter(
  var list: List<FortysevenRowModel>
) : RecyclerView.Adapter<FortySevenAdapter.RowFortysevenVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFortysevenVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_fortyseven,parent,false)
    return RowFortysevenVH(view)
  }

  override fun onBindViewHolder(holder: RowFortysevenVH, position: Int) {
    val fortysevenRowModel = FortysevenRowModel()
    // TODO uncomment following line after integration with data source
    // val fortysevenRowModel = list[position]
    holder.binding.fortysevenRowModel = fortysevenRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FortysevenRowModel>) {
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
      item: FortysevenRowModel
    ) {
    }
  }

  inner class RowFortysevenVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFortysevenBinding = RowFortysevenBinding.bind(itemView)
    init {
      binding.btnTicket.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, FortysevenRowModel())
      }
    }
  }
}
