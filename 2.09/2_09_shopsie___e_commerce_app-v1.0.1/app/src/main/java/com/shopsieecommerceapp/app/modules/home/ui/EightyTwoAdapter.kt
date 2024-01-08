package com.shopsieecommerceapp.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.databinding.RowEightytwoBinding
import com.shopsieecommerceapp.app.modules.home.`data`.model.EightytwoRowModel
import kotlin.Int
import kotlin.collections.List

class EightyTwoAdapter(
  var list: List<EightytwoRowModel>
) : RecyclerView.Adapter<EightyTwoAdapter.RowEightytwoVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowEightytwoVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_eightytwo,parent,false)
    return RowEightytwoVH(view)
  }

  override fun onBindViewHolder(holder: RowEightytwoVH, position: Int) {
    val eightytwoRowModel = EightytwoRowModel()
    // TODO uncomment following line after integration with data source
    // val eightytwoRowModel = list[position]
    holder.binding.eightytwoRowModel = eightytwoRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<EightytwoRowModel>) {
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
      item: EightytwoRowModel
    ) {
    }
  }

  inner class RowEightytwoVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowEightytwoBinding = RowEightytwoBinding.bind(itemView)
    init {
      binding.btnSeventeen.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, EightytwoRowModel())
      }
    }
  }
}
